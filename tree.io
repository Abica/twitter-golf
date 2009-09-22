// original tweet located at http://twitter.com/Abica/status/4162941499
//
// this program recursively prints out the directory structure from the current
// working directory down
//
// the output is similar to the unix tree program
//
// to run the program install the io programming language from www.iolanguage.com
// and do io filename.io
//
/** // ungolfed code
Directory tree := method( indentWidth,
  indentWidth := if(indentWidth, indentWidth, 0)
  items foreach(item,
    indentText :=  "  " repeated(indentWidth)
    (indentText .. "|_ ".. item name) println
    item name beginsWithSeq(".") ifFalse(
      item ?tree(indentWidth + 1)
    )
  )
)

Directory tree
**/

// golfed to 136 characters
Directory do(t:=method(i,i:=if(i,i,0);items foreach(a,b:=" "repeated(i);(b .. "|_ " .. a name)println;if(a name at(0)!=46,a?t(i+1)))))t
