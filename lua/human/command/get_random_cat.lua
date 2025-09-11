local cats = {
  [[
 _._     _,-'""`-._    
(,-.`._,'(       |\`-/|
    `-.-' \ )-`( , o o)
          `-    \`_`"'-
]],
  [[
  ,-.       _,---._ __  / \  
 /  )    .-'       `./ /   \ 
(  (   ,'            `/    /|
 \  `-"             \'\   / |
  `.              ,  \ \ /  |
   /`.          ,'-`----Y   |
  (            ;        |   '
  |  ,-.    ,-'         |  / 
  |  | (   |            | /  
  )  |  \  `.___________|/   
  `--'   `--'
]],
  [[
           __..--''``---....___   _..._    __         
 /// //_.-'    .-/";  `        ``<._  ``.''_ `. / // /
///_.-' _..--.'_    \                    `( ) ) // // 
/ (_..-' // (< _     ;_..__               ; `' / ///  
 / // // //  `-._,_)' // / ``--...____..-' /// / //   
]],
  [[
      |\      _,,,---,,_     
ZZZzz /,`.-'`'    -.  ;-;;,_ 
     |,4-  ) )-,_. ,\ (  `'-'
    '---''(_/--'  `-'\_)     
]],
  [[
       _                        
       \`*-.                    
        )  _`-.                 
       .  : `. .                
       : _   '  \               
       ; º` _.   `*-._          
       `-.-'          `-.       
         ;       `       `.     
         :.       .        \    
         . \  .   :   .-'   .   
         '  `+.;  ;  '      :   
         :  '  |    ;       ;-. 
         ; '   : :`-:     _.`* ;
[bug] .*' /  .*' ; .*`- +'  `*' 
      `*-*   `*-*  `*-*'        
]],
  [[
     ／l、      
（ﾟ､ ｡７     
    l、ﾞ~ヽ    
     じしf_,)ノ
]],
}

local function pad(logo)
  logo = vim.split(logo, "\n")
  local longest_line = 0
  for _, line in ipairs(logo) do
    if #line > longest_line then
      longest_line = #line
    end
  end

  -- add spaces to the end of each line until theyre as long as the longest line
  for i, line in ipairs(logo) do
    logo[i] = line .. string.rep(" ", longest_line - #line)
  end
  return vim.fn.join(logo, "\n")
end

function get_cat()
  math.randomseed(os.time())
  local random_cat = cats[math.random(#cats)]
  return pad(random_cat)
end

return {
  get_cat = get_cat, -- to use in other places

  "GetRandomCat",
  function()
    print(get_cat())
  end,
}
