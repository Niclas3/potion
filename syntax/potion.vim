if exists("b:current_syntax")
	finish
endif

syntax keyword potionKeyword to times
syntax keyword potionKeyword loop time to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFuntion print join string

syntax match potionComment "\v#.*$"

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

syntax match potionNumber "\v\d"
syntax match potionNumber "\v0x[a-f]*"
syntax match potionNumber "\v\d\.\d"
syntax match potionNumber "\v\de[-|+]\d"

syntax region potionString start=/\v"/ skip=/\v\./ end=/\v"/

highlight link potionString String
highlight link potionNumber Number
highlight link potionOperator Operator
highlight link potionKeyword Keyword
highlight link potionFuntion Function
highlight link potionComment Comment

let b:current_syntax = "potion"

