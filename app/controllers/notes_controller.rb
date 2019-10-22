class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find(params[:id])
        render json: note
    end

    def create
        note = Note.new(note_params)
        if note.save
            render json: {note: note}
        else
            render json: {errors: note.errors.full_messages}
        end
    end

    private

    def note_params
        params.require(:note).permit(:content, :user_id, :plant_id)
    end
end
