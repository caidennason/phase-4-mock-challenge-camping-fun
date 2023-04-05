class RemoveSignupIdFromSignups < ActiveRecord::Migration[6.1]
  def change
    remove_column :signups, :signup_id, :integer
  end
end
