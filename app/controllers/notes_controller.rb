class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    if user_signed_in?  # ЕСЛИ КЛИЕНТ: то формируется три переменные:
      @notes_closed =  Note.where(user_id: current_user.id, public: false) # - этого клиента (скрытые)
      @notes_open   =  Note.where(user_id: current_user.id, public:  true) # - этого клиента (открытые)
      @notes_public =  Note.where(public: true).where.not(user_id: current_user.id) # - все открытые из БД (но не этого клиента)
    else                # ЕСЛИ ГОСТЬ: то формируется одна переменная:
      @notes_public  =  Note.where(public: true)   # - все открытые, всех клиентов.
    end  
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)

    # Сделаем автоматическое заполнение поля user_id Для этого добавим здесь строчку:
    @note.user_id = current_user.id  # Подтягивает значение от текущего пользователя 
    # И закоменитуем блок, где вводится это значение в файле формы _form.html.erb

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:title, :user_id, :label_id, :public, :level, :stars, :description, :body, :url)
    end
end
