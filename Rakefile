require 'crxmake'
desc 'build'
task :build => :cp do
  `rm package/bbro3autolink.crx`
  CrxMake.make(
    :ex_dir => "./.build",
    :pkey   => "~/Dropbox/crx_pem/bro3_autolink.pem",
    :crx_output => "./package/bro3autolink.crx",
    :verbose => true,
    :ignorefile => /\.swp|.gitignore/,
    :ignoredir => /\.git|package/
    )
  `rm -r .build`
end

desc 'zip'
task :zip => :cp do
  `rm package/bro3autolink.zip`
  CrxMake.zip(
    :ex_dir => "./.build",
    :pkey   => "~/Dropbox/crx_pem/bro3_autolink.pem",
    :zip_output => "./package/bro3autolink.zip",
    :verbose => true,
    :ignoredir => /\.git/
    )
  `rm -r .build`
end

task :cp do
  `rm -r ./.build`
  `mkdir package`
  `mkdir .build`
  `cp -R lib ./.build`
  `cp manifest.json ./.build`
end
