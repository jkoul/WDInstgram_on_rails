class EntriesController < ApplicationController

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new( entry_params )
    @entry.update( date_taken: Time.now.strftime("%B %d, %Y") )
    redirect_to("/entries/#{@entry.id}")
  end

  def edit
    @entry = Entry.find( params[:id] )
  end

  def update
    @entry = Entry.find( params[:id] )
    @entry.update( entry_params )
    redirect_to("/entries/#{@entry.id}")
  end

  def show
    @entry = Entry.find( params[:id] )
  end

  def destroy
    @entry = Entry.find( params[:id] )
    @entry.destroy
    redirect_to("/")
  end

# workaround to be able to post new entry
  private
    def entry_params
      params.require(:entry).permit(:author, :photo_url)
    end

end
