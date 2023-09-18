class Comment < ApplicationRecord
  belongs_to :prototype  # prototypessテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション

  validates :content, presence: true
end
