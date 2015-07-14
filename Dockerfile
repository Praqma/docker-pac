FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y libxslt-dev 
RUN apt-get install -y libxml2-dev
RUN apt-get install -y zlib1g-dev

RUN apt-get install -y ruby
RUN apt-get install -y ruby-dev

RUN apt-get install -y git vim

RUN gem install 'mercurial-ruby' --no-rdoc --no-ri
RUN gem install 'kramdown' --no-rdoc --no-ri
RUN gem install 'pdfkit' --no-rdoc --no-ri
RUN gem install 'rake' --no-rdoc --no-ri

RUN apt-get install -y make
RUN apt-get install -y cmake
RUN apt-get install -y pkg-config
RUN gem install 'rugged' --no-rdoc --no-ri

RUN gem install nokogiri -- --use-system-libraries  --no-rdoc --no-ri
RUN gem install 'trac4r' --no-rdoc --no-ri

RUN gem install 'docopt' --no-rdoc --no-ri
RUN gem install 'ruby-fogbugz' --no-rdoc --no-ri
RUN gem install 'flexmock' --no-rdoc --no-ri
RUN gem install 'simplecov'  --no-rdoc --no-ri 
RUN gem install 'simplecov-rcov'  --no-rdoc --no-ri
RUN gem install 'ci_reporter_test_unit' --no-rdoc --no-ri
RUN gem install 'zip' --no-rdoc --no-ri

RUN apt-get install -y wkhtmltopdf

WORKDIR /data


