There is the Markdown required to make a new ideas.

FIXME: Add a "create" link to automatically create a new idea prefilled with the following template.

{% raw %}

#### Title
~~~ markdown
[{{reference.repo}} #{{reference.number}}] {{title}}
~~~

#### Labels

 * <div class="label" style="background-color: #02e10c;">(fluro green)</div> Language
 * <div class="label" style="background-color: #02d7e1;">(fluro light blue)</div> Project
 * <div class="label" style="background-color: #d7e102;">(dark yellow)</div> Type
 * <div class="label" style="background-color: #5319e7;">(dark blue)</div> Difficulty

#### Description
~~~ markdown

More technical details at [Link to bug in the ](http://github.com/timvideos/{{reference.repo}}/issues/{{reference.number}})

# Brief explanation

A short description of what the thing you want to do.

## Expected results

# Detailed Explanation

A much longer description of what the thing you want to do.

## Further reading

 * [Link to a PDF document](http://abc/abc.pdf)
 * [Link to a some HTML page](http://abc/abc.html)

# Knowledge Prerequisites

 *

# Contacts

 * **Potential Mentors:** @{{github mentor username}}
 * **Mailing list:** [timvideos@groups.google.com](http://https://groups.google.com/forum/#!forum/timvideos/)

~~~
{% endraw %}