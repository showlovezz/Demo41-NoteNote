class NotesController < ApplicationController

	before_action :find_note, only: [:show, :edit, :update, :destroy]

	def index
		@notes = Note.where(user_id: current_user)
	end

	def new
		@note = current_user.notes.build
	end

	def create
		@note = current_user.notes.build(note_params)
		if @note.save
			redirect_to notes_path, notice: "記事本已建立"
		else
			render "new", alert: "記事本建立失敗，再檢查一下吧!"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @note.update(note_params)
			redirect_to notes_path, notice: "記事本修改成功"
		else
			render "edit", alert: "記事本修改失敗!"
		end
	end

	def destroy
		@note.destroy
		redirect_to notes_path, alert: "文章已被刪除"
	end

	private

	def note_params
		params.require(:note).permit(:title, :content)
	end

	def find_note
		@note = Note.find(params[:id])
	end

end
