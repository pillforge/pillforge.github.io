{
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sgf4rsfr7jcaqsx0wwzx4l4k9xsjlwv0mzl08pxiyp1qzyx8scr";
      type = "gem";
    };
    version = "5.1.4";
  };
  addressable = {
    dependencies = ["public_suffix"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0viqszpkggqi8hq87pqp0xykhvz60g99nwmkwsb0v45kc2liwxvk";
      type = "gem";
    };
    version = "2.5.2";
  };
  bibtex-ruby = {
    dependencies = ["latex-decode"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01rqx80dwhzkfnk00qzshx8akfwap4p5n4hf0xv0cf0xb61nhn0h";
      type = "gem";
    };
    version = "4.4.5";
  };
  citeproc = {
    dependencies = ["namae"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s3dgknq1r62j157szpncsvw3v16f3qbwphyvlqxp3rqlh8frwb3";
      type = "gem";
    };
    version = "1.0.8";
  };
  citeproc-ruby = {
    dependencies = ["citeproc" "csl"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ip0mwyzd59jnkb64jph0rkbqh1zyn59w2zq8s1kn5dl3fpchlyg";
      type = "gem";
    };
    version = "1.1.8";
  };
  colorator = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f7wvpam948cglrciyqd798gdc6z3cfijciavd0dfixgaypmvy72";
      type = "gem";
    };
    version = "1.1.0";
  };
  concurrent-ruby = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "183lszf5gx84kcpb779v6a2y0mx9sssy8dgppng1z9a505nj1qcf";
      type = "gem";
    };
    version = "1.0.5";
  };
  csl = {
    dependencies = ["namae"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sn7xvnn3gw4qsvhg3xi7lzlhxsfgj1j5spcp8bnafyc5zdmdcmh";
      type = "gem";
    };
    version = "1.5.0";
  };
  csl-styles = {
    dependencies = ["csl"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1g1jjanxknynz2s77y8yb1q0k612041sn0x9gmpx60lg0jrl4i3q";
      type = "gem";
    };
    version = "1.0.1.8";
  };
  em-websocket = {
    dependencies = ["eventmachine" "http_parser.rb"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bsw8vjz0z267j40nhbmrvfz7dvacq4p0pagvyp17jif6mj6v7n3";
      type = "gem";
    };
    version = "0.5.1";
  };
  eventmachine = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "075hdw0fgzldgss3xaqm2dk545736khcvv1fmzbf1sgdlkyh1v8z";
      type = "gem";
    };
    version = "1.2.5";
  };
  execjs = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yz55sf2nd3l666ms6xr18sm2aggcvmb8qr3v53lr4rir32y1yp1";
      type = "gem";
    };
    version = "2.7.0";
  };
  extras = {
    dependencies = ["forwardable-extended"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08x9wmzmgq3a878396ffd2ic8z0chl3znilk386gcxvyyldd4nv2";
      type = "gem";
    };
    version = "0.3.0";
  };
  fastimage = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dzv34dgpw1sakj4wdd26dnw1z7iwvwfdvfr9aiirspabibfq6vc";
      type = "gem";
    };
    version = "2.1.1";
  };
  ffi = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0c2dl10pi6a30kcvx2s6p2v1wb4kbm48iv38kmz2ff600nirhpb8";
      type = "gem";
    };
    version = "1.9.21";
  };
  forwardable-extended = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15zcqfxfvsnprwm8agia85x64vjzr2w0xn9vxfnxzgcv8s699v0v";
      type = "gem";
    };
    version = "2.6.0";
  };
  "http_parser.rb" = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15nidriy0v5yqfjsgsra51wmknxci2n2grliz78sf9pga3n0l7gi";
      type = "gem";
    };
    version = "0.6.0";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xqxz820lxf1if7zpjxw41d4gkf4yymi92ampqrgzdvf6f54w1qi";
      type = "gem";
    };
    version = "0.9.4";
  };
  jekyll = {
    dependencies = ["addressable" "colorator" "em-websocket" "i18n" "jekyll-sass-converter" "jekyll-watch" "kramdown" "liquid" "mercenary" "pathutil" "rouge" "safe_yaml"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05f61rqwz1isci7by34zyz38ah2rv5b8i5h618cxcl97hwqps8n2";
      type = "gem";
    };
    version = "3.7.2";
  };
  jekyll-assets = {
    dependencies = ["activesupport" "execjs" "extras" "fastimage" "jekyll" "jekyll-sanity" "liquid-tag-parser" "nokogiri" "pathutil" "sprockets"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kjw7qccf8wb47kafl6rlrjgn6p7hik36lf419mmqzzb4z60yml7";
      type = "gem";
    };
    version = "3.0.7";
  };
  jekyll-sanity = {
    dependencies = ["jekyll"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g20p86bgq3fn0799hlsskgp7mjxxfl9v3vkjz2hslhdng56h4fh";
      type = "gem";
    };
    version = "1.2.0";
  };
  jekyll-sass-converter = {
    dependencies = ["sass"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "008ikh5fk0n6ri54mylcl8jn0mq8p2nfyfqif2q3pp0lwilkcxsk";
      type = "gem";
    };
    version = "1.5.2";
  };
  jekyll-scholar = {
    dependencies = ["bibtex-ruby" "citeproc-ruby" "csl-styles" "jekyll"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1w6v0jpf11gjjygkkqnbmlcnl2g2a4l35rd14c5v5nwrciw346yg";
      type = "gem";
    };
    version = "5.12.0";
  };
  jekyll-watch = {
    dependencies = ["listen"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m7scvj3ki8bmyx5v8pzibpg6my10nycnc28lip98dskf8iakprp";
      type = "gem";
    };
    version = "2.0.0";
  };
  kramdown = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mkrqpp01rrfn3rx6wwsjizyqmafp0vgg8ja1dvbjs185r5zw3za";
      type = "gem";
    };
    version = "1.16.2";
  };
  latex-decode = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dqanr69as05vdyp9gx9737w3g44rhyk7x96bh9x01fnf1yalyzd";
      type = "gem";
    };
    version = "0.3.1";
  };
  liquid = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17fa0jgwm9a935fyvzy8bysz7j5n1vf1x2wzqkdfd5k08dbw3x2y";
      type = "gem";
    };
    version = "4.0.0";
  };
  liquid-tag-parser = {
    dependencies = ["extras" "liquid"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sbzsp5nvph9chszwm9ll1gi1v6p0l3wc20ijv19iiqj64qkwnl3";
      type = "gem";
    };
    version = "1.8.0";
  };
  listen = {
    dependencies = ["rb-fsevent" "rb-inotify" "ruby_dep"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01v5mrnfqm6sgm8xn2v5swxsn1wlmq7rzh2i48d4jzjsc7qvb6mx";
      type = "gem";
    };
    version = "3.1.5";
  };
  mercenary = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10la0xw82dh5mqab8bl0dk21zld63cqxb1g16fk8cb39ylc4n21a";
      type = "gem";
    };
    version = "0.3.6";
  };
  mini_portile2 = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13d32jjadpjj6d2wdhkfpsmy68zjx90p49bgf8f7nkpz86r1fr11";
      type = "gem";
    };
    version = "2.3.0";
  };
  minitest = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0icglrhghgwdlnzzp4jf76b0mbc71s80njn5afyfjn4wqji8mqbq";
      type = "gem";
    };
    version = "5.11.3";
  };
  namae = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00w0dgvmdy8lw2b5q9zvhqd5k98a192vdmka96qngi9cvnsh5snw";
      type = "gem";
    };
    version = "1.0.1";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05fm3xh462glvs0rwnfmc1spmgl4ljg2giifynbmwwqvl42zaaiq";
      type = "gem";
    };
    version = "1.8.2";
  };
  pathutil = {
    dependencies = ["forwardable-extended"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wc18ms1rzi44lpjychyw2a96jcmgxqdvy2949r4vvb5f4p0lgvz";
      type = "gem";
    };
    version = "0.16.1";
  };
  public_suffix = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mvzd9ycjw8ydb9qy3daq3kdzqs2vpqvac4dqss6ckk4rfcjc637";
      type = "gem";
    };
    version = "3.0.1";
  };
  rack = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mfriw2r2913dv8qf3p87n7yal3qfsrs478x2qz106v8vhmxa017";
      type = "gem";
    };
    version = "2.0.4";
  };
  rake = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "190p7cs8zdn07mjj6xwwsdna3g0r98zs4crz7jh2j2q5b0nbxgjf";
      type = "gem";
    };
    version = "12.3.0";
  };
  rb-fsevent = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fbpmjypwxkb8r7y1kmhmyp6gawa4byw0yb3jc3dn9ly4ld9lizf";
      type = "gem";
    };
    version = "0.10.2";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yfsgw5n7pkpyky6a9wkf1g9jafxb0ja7gz0qw0y14fd2jnzfh71";
      type = "gem";
    };
    version = "0.9.10";
  };
  redcarpet = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0h9qz2hik4s9knpmbwrzb3jcp3vc5vygp9ya8lcpl7f1l9khmcd7";
      type = "gem";
    };
    version = "3.4.0";
  };
  rouge = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sfhy0xxqjnzqa7qxmpz1bmy0mzcr55qyvi410gsb6d6i4ialbw3";
      type = "gem";
    };
    version = "3.1.1";
  };
  ruby_dep = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1c1bkl97i9mkcvkn1jks346ksnvnnp84cs22gwl0vd7radybrgy5";
      type = "gem";
    };
    version = "1.5.0";
  };
  safe_yaml = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hly915584hyi9q9vgd968x2nsi5yag9jyf5kq60lwzi5scr7094";
      type = "gem";
    };
    version = "1.0.4";
  };
  sass = {
    dependencies = ["sass-listen"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10401m2xlv6vaxfwzy4xxmk51ddcnkvwi918cw3jkki0qqdl7d8v";
      type = "gem";
    };
    version = "3.5.5";
  };
  sass-listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xw3q46cmahkgyldid5hwyiwacp590zj2vmswlll68ryvmvcp7df";
      type = "gem";
    };
    version = "4.0.0";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sv3zk5hwxyjvg7iy9sggjc7k3mfxxif7w8p260rharfyib939ar";
      type = "gem";
    };
    version = "3.7.1";
  };
  thread_safe = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fjx9j327xpkkdlxwmkl3a8wqj7i4l4jwlrv3z13mg95z9wl253z";
      type = "gem";
    };
    version = "1.2.5";
  };
  uglifier = {
    dependencies = ["execjs"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10yn0jlqz7svbn3ip51fkc76ag2v5jmnx0y7gg7sada8200xbw88";
      type = "gem";
    };
    version = "4.1.6";
  };
}