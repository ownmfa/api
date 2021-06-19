# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/user.proto

require 'google/protobuf'

require 'api/status_pb'
require 'common/role_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/field_mask_pb'
require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'protoc-gen-openapiv2/options/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("api/user.proto", :syntax => :proto3) do
    add_message "ownmfa.api.User" do
      optional :id, :string, 1
      optional :org_id, :string, 2
      optional :name, :string, 3
      optional :email, :string, 4
      optional :role, :enum, 5, "ownmfa.common.Role"
      optional :status, :enum, 6, "ownmfa.api.Status"
      optional :created_at, :message, 7, "google.protobuf.Timestamp"
      optional :updated_at, :message, 8, "google.protobuf.Timestamp"
    end
    add_message "ownmfa.api.CreateUserRequest" do
      optional :user, :message, 1, "ownmfa.api.User"
    end
    add_message "ownmfa.api.GetUserRequest" do
      optional :id, :string, 1
    end
    add_message "ownmfa.api.UpdateUserRequest" do
      optional :user, :message, 1, "ownmfa.api.User"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "ownmfa.api.UpdateUserPasswordRequest" do
      optional :id, :string, 1
      optional :password, :string, 2
    end
    add_message "ownmfa.api.DeleteUserRequest" do
      optional :id, :string, 1
    end
    add_message "ownmfa.api.ListUsersRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "ownmfa.api.ListUsersResponse" do
      repeated :users, :message, 1, "ownmfa.api.User"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
  end
end

module Ownmfa
  module Api
    User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.User").msgclass
    CreateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.CreateUserRequest").msgclass
    GetUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.GetUserRequest").msgclass
    UpdateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.UpdateUserRequest").msgclass
    UpdateUserPasswordRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.UpdateUserPasswordRequest").msgclass
    DeleteUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.DeleteUserRequest").msgclass
    ListUsersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListUsersRequest").msgclass
    ListUsersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListUsersResponse").msgclass
  end
end