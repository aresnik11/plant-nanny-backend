class NotesController < ApplicationController
    def create
        note = Note.new(note_params)
        if note.save
            render json: note, status: :created
        else
            render json: {errors: note.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy 
        note = Note.find_by(id: params[:id])
        if note
            note.destroy
            render json: note
        else
            render json: {errors: 'No note found'}, status: :not_found
        end
    end

    private

    def note_params
        params.require(:note).permit(:content, :user_id, :plant_id)
    end
end
