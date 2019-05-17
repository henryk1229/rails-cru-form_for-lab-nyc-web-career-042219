class GenreController

  	def index
  		@genre = Genre.all
  	end

  	def show
  		@genre = Genre.find(params[:id])
  	end

  	def new
  		@genre = Genre.new
  	end

  	def create
  	  @genre = Genre.new(genre_params)
  	  @genre.save
  	  redirect_to  genre_path(@genre)
  	end

  	def update
  	  @genre = Genre.find(params[:id])
  	  @genre.update(genre_params)
  	  redirect_to genre_path(@genre)
  	end

  	def edit
  		@genre = Genre.find(params[:id])
  	end
  end

  	private

  	# We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def genre_params(*args)
    params.require(:genre).permit(:name)
  end
