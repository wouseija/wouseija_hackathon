class LeisController < ApplicationController
  # GET /leis
  # GET /leis.json
  def index
    @leis = Lei.where('ano >= :ano_i AND ano <= :ano_f', {:ano_i => 2009, :ano_f => 2012})

    @json = @leis.to_gmaps4rails do |lei, marker|
        marker.infowindow ( "<h4>#{lei.titulo}</h4><p><strong>Bairro: </strong>#{lei.bairro}</p>")
        marker.picture({
                        :picture => "#{lei.regiao}.png",
                        :width => "32",
                        :height => "32"
                        })
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leis }
    end
  end

  # GET /leis/1
  # GET /leis/1.json
  def show
    @lei = Lei.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lei }
    end
  end

  # GET /leis/new
  # GET /leis/new.json
  def new
    @lei = Lei.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lei }
    end
  end

  # GET /leis/1/edit
  def edit
    @lei = Lei.find(params[:id])
  end

  # POST /leis
  # POST /leis.json
  def create
    @lei = Lei.new(params[:lei])

    respond_to do |format|
      if @lei.save
        format.html { redirect_to @lei, notice: 'Lei was successfully created.' }
        format.json { render json: @lei, status: :created, location: @lei }
      else
        format.html { render action: "new" }
        format.json { render json: @lei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leis/1
  # PUT /leis/1.json
  def update
    @lei = Lei.find(params[:id])

    respond_to do |format|
      if @lei.update_attributes(params[:lei])
        format.html { redirect_to @lei, notice: 'Lei was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leis/1
  # DELETE /leis/1.json
  def destroy
    @lei = Lei.find(params[:id])
    @lei.destroy

    respond_to do |format|
      format.html { redirect_to leis_url }
      format.json { head :no_content }
    end
  end
end
