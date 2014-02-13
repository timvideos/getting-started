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
        var ref = idea.title.match(/^\[([^#]*)#([0-9]*)\] (.*)/);
        if (!ref)
            return;

        idea.reference = {
            repo: $.trim(ref[1]),
            issue: $.trim(ref[2]),
        };
        idea.title = ref[3];

        $.ajax({
            type: "GET",
            url: "https://api.github.com/repos/timvideos/"+idea.reference.repo+"/issues/"+idea.reference.issue,
            dataType: "json",
            headers: {
                Accept: "application/vnd.github.full+json"
            },
        }).done(function (idea_extra_info) {
            $('#'+idea.number+' .extra_info').html(idea_extra_info.body_html);
        }).fail(function () {
            $('#'+idea.number+' .extra_info').html("Unable to load extra info.");
        });

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
                        body_html: $('div[id=\''+label_project+'\']').html(),
                    };
                }
                projects[label_project].ideas.push(idea);
            }
        });
    });
    var template = $('#ideas-template').html();

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

    var output = Mustache.to_html(template, {'projects': projects_array});
    $('#ideas').html(output);
}).fail(function () {
    $('#ideas').html("<h1>Unable to load ideas from GitHub tracker. Please reload webpage.</h1>");
});    
