function shift_headers(html, by) {
  var dummy = $('<div>');
  dummy.html(html);
  for (var i = 6; i > 0; i--) {
    var from = 'h'+i; // CSS selector

    var to = '<h'+(i+by)+'>'; // HTML
    if (i+by > 6) { // h6 is the smallest
      to = '<b class=h'+(i+by)+'>';
    }

    dummy.find(from).replaceWith(function(){
      return $(to).append($(this).contents());
    });
  }
  return dummy;
}


var ideas_template = $('#ideas-template').html();
var ideas_extra_template = $('#ideas-extra-template').html();

$.ajax({
    type: "GET",
    url: "https://api.github.com/repos/timvideos/getting-started/issues",
    dataType: "json",
    headers: {
        Accept: "application/vnd.github.full+json"
    },
}).done(function (ideas) {
    var projects = {};
    var project_prefix = "Project - ";
    $.each(ideas, function (i, idea) {
        var project_ref = idea.title.match(/^\[([^\]]*)\] (.*)/);
        if (!project_ref)
            return;

        var issue_ref = null;
        if (project_ref) {
            idea.title = $.trim(project_ref[2]);

            issue_ref = project_ref[1].match(/^([^#]+)#([0-9]+)/);
            if (issue_ref) {
                idea.reference = {
                    type: "issue",
                    repo: $.trim(issue_ref[1]),
                    number: $.trim(issue_ref[2]),
                };
                idea.reference.url = "https://github.com/timvideos/"+idea.reference.repo+"/issues/"+idea.reference.number;
                idea.reference.extra = Mustache.to_html('Loading extra information from <a href="{{url}}">{{repo}} bug #{{number}}</a>', idea.reference);

                $.ajax({
                    type: "GET",
                    url: "https://api.github.com/repos/timvideos/"+idea.reference.repo+"/issues/"+idea.reference.number,
                    dataType: "json",
                    headers: {
                        Accept: "application/vnd.github.full+json"
                    },
                }).done(function (idea_extra_info) {
                    idea_extra_info.repo = idea.reference.repo;
                    idea_extra_info.fixed_html = shift_headers(idea_extra_info.body_html, 3).html();

                    var element = Mustache.to_html(ideas_extra_template, idea_extra_info);
                    var target = $('#'+idea.number+' .extra_info');
                    target.empty();
                    target.append(element);
                }).fail(function () {
                    $('#'+idea.number+' .extra_info').html("Unable to load extra info.");
                });
            } else {
                idea.reference = {
                    type: "project",
                    repo: $.trim(project_ref[1]),
                    extra: "&nbsp;",
                };
            }
        }
        //console.log(idea.title, project_ref, issue_ref, idea.reference);

        idea.fixed_html = shift_headers(idea.body_html, 2).html();

        $.each(idea.labels, function (j, label) {
            if (label == 'Hot') {
                idea['hot'] = 'hot';
            }
            var label_prefix = label.name.substring(0, project_prefix.length);
            var label_project = label.name.substring(project_prefix.length);
            if (label_prefix == project_prefix) {
                if (!(label_project in projects)) {
                    projects[label_project] = {
                        name: label_project,
                        label: label,
                        ideas: [],
                        fixed_html: $('div[id=\''+label_project+'\']').html(),
                    };
                }
                projects[label_project].ideas.push(idea);
            }
        });
    });

    var projects_array = $.map(projects, function (v, k) {
        return v;
    });
    projects_array.sort(function (a, b) {
        var a_name = a.name.toLowerCase();
        var b_name = b.name.toLowerCase();
        if (a_name > b_name)
            return 1;
        if (a_name < b_name)
            return -1;
        return 0;
    });

    var output = Mustache.to_html(ideas_template, {'projects': projects_array});
    //console.log(output);
    $('#ideas').html(output);
}).fail(function () {
    $('#ideas').html("<h1>Unable to load ideas from GitHub tracker. Please reload webpage.</h1>");
});    
