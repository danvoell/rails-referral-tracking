class AddReferralToUsers < ActiveRecord::Migration
  def change
    add_column :users, :referral, :string
  end
end
