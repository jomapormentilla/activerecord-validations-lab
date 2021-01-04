class PostValidator < ActiveModel::Validator
    def validate( record )
        if record.title != nil
            unless record.title.include?("Won't Believe"||"Secret"||"Top"||"Guess")
                record.errors.add :title, "Not Sufficiently Click Bait-y!"
            end
        end
    end
end