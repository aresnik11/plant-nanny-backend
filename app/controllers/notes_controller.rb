class NotesController < ApplicationController
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
