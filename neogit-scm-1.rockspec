local _MODREV, _SPECREV = 'scm', '-1'

package = 'neogit'
version = _MODREV .. _SPECREV

description = {
   summary = 'magit for neovim',
   detailed = [[
   ]],
   homepage = 'http://github.com/TimUntersberger/neogit',
   license = 'MIT/X11',
}

dependencies = {
   'lua >= 5.1, < 5.4',
   'plenary',
}

source = {
   url = 'http://github.com/TimUntersberger/neogit/v' .. _MODREV .. '.zip',
   dir = 'neogit-' .. _MODREV,  
}

if _MODREV == 'scm' then

   source = {
      url = 'git://github.com/TimUntersberger/neogit',
   }
end


build = {
   type = 'builtin',
   modules = {


   },
   copy_directories = {  'syntax' , "ftplugin", 'lua',  }
}

-- if _MODREV == 'git' then
--    dependencies[#dependencies + 1] = 'ldoc'

--    source = {
--       url = 'git://github.com/luaposix/luaposix.git',
--    }
-- end

