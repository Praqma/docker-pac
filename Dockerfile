FROM ubuntu:trusty

RUN apt-get update 
RUN apt-get install -y libxslt1-dev=1.1.28-2build1
RUN apt-get install -y libxml2-dev=2.9.1+dfsg1-3ubuntu4.4
RUN apt-get install -y zlib1g-dev=1:1.2.8.dfsg-1ubuntu1

RUN apt-get install -y ruby1.9.1
RUN apt-get install -y ruby1.9.1-dev

RUN apt-get install -y git=1:1.9.1-1ubuntu0.1
RUN apt-get install -y vim=2:7.4.052-1ubuntu3

RUN gem install 'mercurial-ruby' -v 0.7.12 --no-rdoc --no-ri
RUN gem install 'kramdown'       -v 1.8.0  --no-rdoc --no-ri
RUN gem install 'pdfkit'         -v 0.8.2  --no-rdoc --no-ri
RUN gem install 'rake'           -v 10.4.2 --no-rdoc --no-ri

RUN apt-get install -y make=3.81-8.2ubuntu3
RUN apt-get install -y cmake=2.8.12.2-0ubuntu3
RUN apt-get install -y pkg-config=0.26-1ubuntu4
RUN gem install 'rugged'         -v 0.23.2 --no-rdoc --no-ri

RUN gem install nokogiri         -v 1.6.6.2 -- --use-system-libraries  --no-rdoc --no-ri
RUN gem install 'trac4r'         -v 1.2.4  --no-rdoc --no-ri

RUN gem install 'docopt'         -v 0.5.0  --no-rdoc --no-ri
RUN gem install 'ruby-fogbugz'   -v 0.2.1  --no-rdoc --no-ri
RUN gem install 'flexmock'       -v 1.3.3  --no-rdoc --no-ri
RUN gem install 'simplecov'      -v 0.10.0 --no-rdoc --no-ri 
RUN gem install 'simplecov-rcov'        -v 0.2.3  --no-rdoc --no-ri
RUN gem install 'ci_reporter_test_unit' -v 1.0.0 --no-rdoc --no-ri
RUN gem install 'zip'                   -v 2.0.2  --no-rdoc --no-ri

RUN apt-get install -y wkhtmltopdf=0.9.9-4

WORKDIR /data


