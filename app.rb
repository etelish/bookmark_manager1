require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end


post '/bookmarks' do
  Bookmark.create(url: params[:new_url], title: params[:title])
  # connection = PG.connect(dbname: 'bookmark_manager_test')
  # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  redirect '/bookmarks'
end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  run! if app_file == $0
end
