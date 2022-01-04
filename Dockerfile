FROM soumyaray/ruby-http:3.0.3

WORKDIR /worker

COPY / .

RUN bundle install

CMD rake worker
