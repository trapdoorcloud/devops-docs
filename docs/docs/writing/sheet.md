# Writing documentation

Pages are written in markdown Format and stored as `*.md` files within
the `doc` folder. The
[Markdown](https://toolchain.gitbook.com/syntax/markdown.html)
implementation is nearly the same as used on GitHub but with some
additions:

### Navigation title

The title that is set at the top of each markdown file will be used as
the title of the article. It will also automatically reflect as the
title in the side navigation menu.

```markdown
# My Title


```

### Simple Formats

Structure the text using headings:

```markdown
# Heading 1

## Heading 2

### Heading 3
```

Blockquotes are done using `>` signs:

```markdown
> This is a block quote in which only the first line of the paragraph needs
> to be indented by `>` but it can also be done on each line.
```

> This is a block quote in which only the first line of the paragraph needs
> to be indented by `>` but it can also be done on each line.

A horizontal line may be used to separate:

```markdown
---
```

---

Use some inline text formatting:

| Format                       | Example                                                 | Result                                                |
| -------------------          | -----------------------------                           | -----------------------------------------             |
| Italic                       | `_Italic_` or `*Italic*`                                | _Italic_                                              |
| Bold                         | `__Bold__` or `**Bold**`                                | **Bold**                                              |
| Superscript                  | `H^2^O`                                                 | H^2^O                                                 |
| Subscript                    | `CH~3~CH~2~OH`                                          | CH~3~CH~2~OH                                          |
| Insert                       | `^^Insert^^`                                            | ^^Insert^^                                            |
| Delete                       | `~~Delete me~~`                                         | ~~Delete me~~                                         |
| Mark                         | `==mark me==`                                           | ==mark me==                                           |
| Emoji                        | `:smile:`                                               | :smile:                                               |
| Code                         | \`echo "Hello"\`                                        | `echo "Hello"`                                        |
| Code + Highlighting          | \`:::bash echo "Hello"\`                                | `:::bash echo "Hello"`                                |
| Keys                         | `++ctrl+alt+h++`                                        | ++ctrl+alt+h++                                        |
| Link                         | `[Text](http://my-site.com)`                            | [Text](http://my-site.com)                            |
| Image                        | `![Logo](../img/snappic-logo.svg)`                          | ![Logo](../img/snappic-logo.svg)                          |
| Image (Smaller)              | `![Logo](../img/snappic-logo.svg){: style="width:150px"}`   | ![Logo](../img/snappic-logo.svg){: style="width:150px"}   |
| Image (which is also a link) | `[![Logo](../img/snappic-logo.svg)](https://getsnappic.com)` | [![Logo](../img/snappic-logo.svg)](https://getsnappic.com) |

### Lists

Unordered list:

```markdown
-   water
-   cola
-   beer
```

-   water
-   cola
-   beer

Ordered list:

```markdown
1. select
2. take
3. buy
```

1. select
2. take
3. buy

And finally a task list is also possible:

```markdown
-   [x] item 1
    -   [x] item A
    -   [ ] item B
            more text
        -   [x] item a
        -   [ ] item b
        -   [x] item c
    -   [x] item C
-   [ ] item 2
-   [ ] item 3
```

-   [x] item 1
    -   [x] item A
    -   [ ] item B
            more text
        -   [x] item a
        -   [ ] item b
        -   [x] item c
    -   [x] item C
-   [ ] item 2
-   [ ] item 3

### Tables

Tables can have alignment:

```markdown
| Left | Center | Right |
| :--- | :----: | ----: |
| one  |  two   | three |
| 1    |   2    |     3 |
```

| Left | Center | Right |
| :--- | :----: | ----: |
| one  |  two   | three |
| 1    |   2    |     3 |

### Block Messages

The [Admonition](https://python-markdown.github.io/extensions/admonition/) extension configured above will allow to add text blocks.

```markdown
!!! note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

!!! note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

The different types will look like:

!!! note

    Type: `note`, `seealso`

!!! abstract

    Type: `abstract`, `summary`, `tldr`

!!! info

    Type: `info`, `todo`

!!! tip

    Type: `tip`, `hint`, `important`

!!! success

    Type: `success`, `check`, `done`

!!! question

    Type: `question`, `help`, `faq`

!!! warning

    Type: `warning`, `caution`, `attention`

!!! failure

    Type: `failure`, `fail`, `missing`

!!! danger

    Type: `danger`, `error`

!!! bug

    Type: `bug`

!!! example

    Type: `example`, `snippet`

!!! quote

    Type: `quote`, `cite`

The title can also be specified in double quotes behind the type or remove the title by setting `""` for title:

```markdown
!!! note "Individual"
```

!!! note "Individual"

The [`PyMarkdown.Details`](https://facelessuser.github.io/pymdown-extensions/extensions/details/) extension gives the same but as collapsible boxes:

```markdown
??? note "Initially closed"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

???+ note "Initially opened"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

??? note "Initially closed"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

???+ note "Initially opened"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

### Code Blocks

[`CodeHilite`](https://squidfunk.github.io/mkdocs-material/extensions/codehilite/) will help you in display code elements.
You have multiple options to specify the language of a code block:

````markdown
```sql
SELECT count(*) FROM my_table;
```
````

```sql
SELECT count(*) FROM my_table;
```

Or by indention and using a shebang:

```markdown
    #!/bin/bash
    grep $1 $2
```

    #!/bin/bash
    grep $1 $2

Or by indention and three colon start line:

```markdown
    :::bash
    grep $1 $2
```

    :::bash
    grep $1 $2

Using [SuperFences](https://facelessuser.github.io/pymdown-extensions/extensions/superfences/) code elements can be grouped into tabs:

````markdown
```bash tab="Bash"
#!/bin/bash

echo "Hello world!"
```

```c tab="C"
#include <stdio.h>

int main(void) {
  printf("Hello world!\n");
}
```
````

```bash tab="Bash"
#!/bin/bash

echo "Hello world!"
```

```c tab="C"
#include <stdio.h>

int main(void) {
  printf("Hello world!\n");
}
```

Specific lines can be highlighted by passing the line numbers to the `hl_lines` argument placed right after the language identifier.

````markdown
```python hl_lines="3 4"
""" Bubble sort """
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```
````

```python hl_lines="3 4"
""" Bubble sort """
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```

### Diagrams

Using the [blockdiag](http://blockdiag.com/en/blockdiag/examples.html) module graphics can be aut generated out of text representations.

**Simple Diagram:**

Name the blocks and use arrows between them:

```text
blockdiag {
    // simple graph
    A -> B -> C -> D;
    A -> E -> F -> G;
}
```

Comments are also possible like shown in line 2. This will result in:

blockdiag {
// simple graph
A -> B -> C -> D;
A -> E -> F -> G;
}

**Style:**

You can style nodes and edges:

```text
blockdiag {
   A [label = "foo"];
   B [style = dotted];
   C [style = dashed];
   D [color = pink];
   E [color = "#888888", textcolor="#FFFFFF"];
   // Set labels to edges. (short text only)
   A -> B [label = "click", textcolor="red"];
   B -> C [style = dotted];
   C -> D [style = dashed];
   D -> E [color = "red"];
   // Set numbered-badge to nodes.
   F [numbered = 99];
   G [label = "", background = "http://blockdiag.com/en/_static/python-logo.gif"];
   H [thick];
   // Set arrow direction to edges.
   A -> F [dir = none];
   F -> G [dir = forward];
   B -> G [dir = back];
   G -> H [dir = both];
   C -> H [thick]
}
```

blockdiag {
A [label = "foo"];
B [style = dotted];
C [style = dashed];
D [color = pink];
E [color = "#888888", textcolor="#FFFFFF"];
// Set labels to edges. (short text only)
A -> B [label = "click", textcolor="red"];
B -> C [style = dotted];
C -> D [style = dashed];
D -> E [color = "red"];
// Set numbered-badge to nodes.
F [numbered = 99];
G [label = "", background = "http://blockdiag.com/en/_static/python-logo.gif"];
// Set arrow direction to edges.
A -> F [dir = none];
F -> G [dir = forward];
B -> G [dir = back];
G -> H [dir = both];
C -> H [thick]
}

**Branches and Direction:**

```text
blockdiag {
  // branching edges to multiple children
  A -> B, C;
  D -> E <- F -- G <-> H;
}
```

blockdiag {
// branching edges to multiple children
A -> B, C;
D -> E <- F -- G <-> H;
}

**Folding:**

```text
blockdiag {
  A -> B -> C -> D -> E;
  // fold edge at C to D (D will be layouted at top level; left side)
  C -> D [folded];
}
```

blockdiag {
A -> B -> C -> D -> E;
// fold edge at C to D (D will be layouted at top level; left side)
C -> D [folded];
}

**Shapes:**

```text
blockdiag {
  // standard node shapes
  box [shape = box];
  square [shape = square];
  roundedbox [shape = roundedbox];
  dots [shape = dots];

  circle [shape = circle];
  ellipse [shape = ellipse];
  diamond [shape = diamond];
  minidiamond [shape = minidiamond];

  note [shape = note];
  mail [shape = mail];
  cloud [shape = cloud];
  actor [shape = actor];

  beginpoint [shape = beginpoint];
  endpoint [shape = endpoint];

  box -> square -> roundedbox -> dots;
  circle -> ellipse -> diamond -> minidiamond;
  note -> mail -> cloud -> actor;
  beginpoint -> endpoint;

  // node shapes for flowcharts
  condition [shape = flowchart.condition];
  database [shape = flowchart.database];
  terminator [shape = flowchart.terminator];
  input [shape = flowchart.input];

  loopin [shape = flowchart.loopin];
  loopout [shape = flowchart.loopout];

  condition -> database -> terminator -> input;
  loopin -> loopout;

  // Set stacked to nodes.
  stacked [stacked];
  diamond [shape = "diamond", stacked];
  database [shape = "flowchart.database", stacked];
  stacked -> diamond -> database;
}
```

blockdiag {
// standard node shapes
box [shape = box];
square [shape = square];
roundedbox [shape = roundedbox];
dots [shape = dots];

circle [shape = circle];
ellipse [shape = ellipse];
diamond [shape = diamond];
minidiamond [shape = minidiamond];

note [shape = note];
mail [shape = mail];
cloud [shape = cloud];
actor [shape = actor];

beginpoint [shape = beginpoint];
endpoint [shape = endpoint];

box -> square -> roundedbox -> dots;
circle -> ellipse -> diamond -> minidiamond;
note -> mail -> cloud -> actor;
beginpoint -> endpoint;

// node shapes for flowcharts
condition [shape = flowchart.condition];
database [shape = flowchart.database];
terminator [shape = flowchart.terminator];
input [shape = flowchart.input];

loopin [shape = flowchart.loopin];
loopout [shape = flowchart.loopout];

condition -> database -> terminator -> input;
loopin -> loopout;

// Set stacked to nodes.
stacked [stacked];
diamond [shape = "diamond", stacked];
database [shape = "flowchart.database", stacked];
stacked -> diamond -> database;
}

**Groups:**

Sorry, could not get this working in `mkdocs` till now.

**Classes:**

```text
blockdiag {
  // Define class (list of attributes)
  class emphasis [color = pink, style = dashed];
  class redline [color = red, style = dotted];

  A -> B -> C;

  // Set class to node
  A [class = "emphasis"];

  // Set class to edge
  A -> B [class = "redline"];
}
```

blockdiag {
// Define class (list of attributes)
class emphasis [color = pink, style = dashed];
class redline [color = red, style = dotted];

A -> B -> C;

// Set class to node
A [class = "emphasis"];

// Set class to edge
A -> B [class = "redline"];
}

**Portrait mode:**

```text
blockdiag {
  orientation = portrait

  A -> B -> C;
       B -> D;
}
```

blockdiag {
orientation = portrait

A -> B -> C;
B -> D;
}

### Abbreviations

Abbreviations are defined as an extra paragraph mostly at the end of the document:

```markdown
The HTML specification
is maintained by the W3C.

_[HTML]: Hyper Text Markup Language
_[W3C]: World Wide Web Consortium
```

This will be rendered with a tooltip on each occurrence of this words:

The HTML specification
is maintained by the W3C.

_[HTML]: Hyper Text Markup Language
_[W3C]: World Wide Web Consortium

> Combined with the later described `includes` it is also possible to place all abbreviations in a single file and include it at the end of each page.

### Footnotes

The Footnote syntax follows the generally accepted syntax of the Markdown community. You add the footnote using `[^1]` with the correct number and define the content of this footnote later:

```markdown
Footnotes[^1] have a label[^@#$%] and the footnote's content.

[^1]: This is a footnote content.
[^@#$%]: A footnote on the label: "@#\$%".
```

This will look like:

Footnotes[^1] have a label[^@#$%] and the footnote's content.

[^1]: This is a footnote content.
[^@#$%]: A footnote on the label: "@#\$%".

A footnote label must start with a caret `^` and may contain any inline text (including spaces) between a set of square brackets `[]`. Only the first caret has any special meaning.

A footnote content must start with the label followed by a colon and at least one space. The label used to define the content must exactly match the label used in the body (including capitalization and white space). The content would then follow the label either on the same line or on the next line. The content may contain multiple lines, paragraphs, code blocks, blockquotes and most any other markdown syntax. The additional lines must be indented one level (four spaces or one tab).

```markdown
[^1]: The first paragraph of the definition.

    Paragraph two of the definition.

    > A blockquote with
    > multiple lines.

        a code block

    A final paragraph.
```

### Include

It is possible to include other markdown with a simple statement:

```markdown
{ !.gitignore!}
```

> No space after first curly brace to work!

This statement will be replaced by the contents of the given file. The include extension will work recursively, so any included files within will also be included. This replacement is done prior to any other Markdown processing, so any Markdown syntax that you want can be used within your included files.

The file path is relative to the project base (there `mkdocs` is been executed).

### Attributes

Using attributes it is possible to set the various HTML element's attributes for output.
An example attribute list might look like this:

    {: #someid .someclass somekey='some value' }

This shows the possible definitions:

-   A word which starts with `#` will set the id of an element.
-   A word which starts with `.` will be added to the list of classes assigned to an element.
-   A key/value pair `somekey='some value'` will assign that pair to the element.

This can be set on block level elements if defined on the last line of the block by itself.

```markdown
This is a paragraph.
{: #an_id .a_class }
```

The one exception is headers, as they are only ever allowed on one line. So there you neet to write:

```markdown
### A hash style header ### {: #hash }
```

If used on inline elements the attributes are defined immediately after the element without any separation:

```markdown
[link](http://example.com){: class="foo bar" title="Some title!" }
```

> If classes are used you may define them in an [additional CSS](#configuration) file.
