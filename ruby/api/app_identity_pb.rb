# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/app_identity.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/field_mask_pb'
require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'protoc-gen-openapiv2/options/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("api/app_identity.proto", :syntax => :proto3) do
    add_message "ownmfa.api.App" do
      optional :id, :string, 1
      optional :org_id, :string, 2
      optional :name, :string, 3
      optional :display_name, :string, 4
      optional :email, :string, 5
      optional :pushover_key, :string, 6
      optional :subject_template, :string, 7
      optional :text_body_template, :string, 8
      optional :html_body_template, :bytes, 9
      optional :created_at, :message, 10, "google.protobuf.Timestamp"
      optional :updated_at, :message, 11, "google.protobuf.Timestamp"
    end
    add_message "ownmfa.api.CreateAppRequest" do
      optional :app, :message, 1, "ownmfa.api.App"
    end
    add_message "ownmfa.api.GetAppRequest" do
      optional :id, :string, 1
    end
    add_message "ownmfa.api.UpdateAppRequest" do
      optional :app, :message, 1, "ownmfa.api.App"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "ownmfa.api.DeleteAppRequest" do
      optional :id, :string, 1
    end
    add_message "ownmfa.api.ListAppsRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "ownmfa.api.ListAppsResponse" do
      repeated :apps, :message, 1, "ownmfa.api.App"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "ownmfa.api.SoftwareHOTPMethod" do
      optional :hash, :enum, 1, "ownmfa.api.Hash"
      optional :digits, :int32, 2
      optional :counter, :int32, 3
      optional :account_name, :string, 4
    end
    add_message "ownmfa.api.SoftwareTOTPMethod" do
      optional :hash, :enum, 1, "ownmfa.api.Hash"
      optional :digits, :int32, 2
      optional :account_name, :string, 3
    end
    add_message "ownmfa.api.GoogleAuthHOTPMethod" do
      optional :account_name, :string, 1
    end
    add_message "ownmfa.api.GoogleAuthTOTPMethod" do
      optional :account_name, :string, 1
    end
    add_message "ownmfa.api.AppleiOSTOTPMethod" do
    end
    add_message "ownmfa.api.HardwareHOTPMethod" do
      optional :hash, :enum, 1, "ownmfa.api.Hash"
      optional :digits, :int32, 2
      optional :counter, :int32, 3
      optional :secret, :bytes, 4
    end
    add_message "ownmfa.api.HardwareTOTPMethod" do
      optional :hash, :enum, 1, "ownmfa.api.Hash"
      optional :digits, :int32, 2
      optional :secret, :bytes, 3
    end
    add_message "ownmfa.api.SMSMethod" do
      optional :phone, :string, 1
    end
    add_message "ownmfa.api.PushoverMethod" do
      optional :pushover_key, :string, 1
    end
    add_message "ownmfa.api.EmailMethod" do
      optional :email, :string, 1
    end
    add_message "ownmfa.api.BackupsCodesMethod" do
      optional :passcodes, :int32, 1
    end
    add_message "ownmfa.api.SecurityQuestionsMethod" do
      optional :answer, :string, 1
    end
    add_message "ownmfa.api.Identity" do
      optional :id, :string, 1
      optional :org_id, :string, 2
      optional :app_id, :string, 3
      optional :comment, :string, 4
      optional :status, :enum, 5, "ownmfa.api.IdentityStatus"
      optional :created_at, :message, 14, "google.protobuf.Timestamp"
      optional :updated_at, :message, 15, "google.protobuf.Timestamp"
      oneof :method_oneof do
        optional :software_hotp_method, :message, 16, "ownmfa.api.SoftwareHOTPMethod"
        optional :software_totp_method, :message, 6, "ownmfa.api.SoftwareTOTPMethod"
        optional :google_auth_hotp_method, :message, 17, "ownmfa.api.GoogleAuthHOTPMethod"
        optional :google_auth_totp_method, :message, 7, "ownmfa.api.GoogleAuthTOTPMethod"
        optional :apple_ios_totp_method, :message, 22, "ownmfa.api.AppleiOSTOTPMethod"
        optional :hardware_hotp_method, :message, 18, "ownmfa.api.HardwareHOTPMethod"
        optional :hardware_totp_method, :message, 19, "ownmfa.api.HardwareTOTPMethod"
        optional :sms_method, :message, 8, "ownmfa.api.SMSMethod"
        optional :pushover_method, :message, 20, "ownmfa.api.PushoverMethod"
        optional :email_method, :message, 9, "ownmfa.api.EmailMethod"
        optional :backup_codes_method, :message, 10, "ownmfa.api.BackupsCodesMethod"
        optional :security_questions_method, :message, 21, "ownmfa.api.SecurityQuestionsMethod"
      end
    end
    add_message "ownmfa.api.CreateIdentityRequest" do
      optional :identity, :message, 1, "ownmfa.api.Identity"
    end
    add_message "ownmfa.api.CreateIdentityResponse" do
      optional :identity, :message, 1, "ownmfa.api.Identity"
      optional :secret, :string, 2
      optional :qr, :bytes, 3
      repeated :passcodes, :string, 4
    end
    add_message "ownmfa.api.ActivateIdentityRequest" do
      optional :id, :string, 1
      optional :app_id, :string, 2
      optional :passcode, :string, 3
    end
    add_message "ownmfa.api.ChallengeIdentityRequest" do
      optional :id, :string, 1
      optional :app_id, :string, 2
    end
    add_message "ownmfa.api.VerifyIdentityRequest" do
      optional :id, :string, 1
      optional :app_id, :string, 2
      optional :passcode, :string, 3
    end
    add_message "ownmfa.api.GetIdentityRequest" do
      optional :id, :string, 1
      optional :app_id, :string, 2
    end
    add_message "ownmfa.api.DeleteIdentityRequest" do
      optional :id, :string, 1
      optional :app_id, :string, 2
    end
    add_message "ownmfa.api.ListIdentitiesRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
      optional :app_id, :string, 3
    end
    add_message "ownmfa.api.ListIdentitiesResponse" do
      repeated :identities, :message, 1, "ownmfa.api.Identity"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_enum "ownmfa.api.IdentityStatus" do
      value :UNVERIFIED, 0
      value :ACTIVATED, 3
    end
    add_enum "ownmfa.api.Hash" do
      value :SHA512, 0
      value :SHA256, 1
      value :SHA1, 2
    end
  end
end

module Ownmfa
  module Api
    App = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.App").msgclass
    CreateAppRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.CreateAppRequest").msgclass
    GetAppRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.GetAppRequest").msgclass
    UpdateAppRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.UpdateAppRequest").msgclass
    DeleteAppRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.DeleteAppRequest").msgclass
    ListAppsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListAppsRequest").msgclass
    ListAppsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListAppsResponse").msgclass
    SoftwareHOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.SoftwareHOTPMethod").msgclass
    SoftwareTOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.SoftwareTOTPMethod").msgclass
    GoogleAuthHOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.GoogleAuthHOTPMethod").msgclass
    GoogleAuthTOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.GoogleAuthTOTPMethod").msgclass
    AppleiOSTOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.AppleiOSTOTPMethod").msgclass
    HardwareHOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.HardwareHOTPMethod").msgclass
    HardwareTOTPMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.HardwareTOTPMethod").msgclass
    SMSMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.SMSMethod").msgclass
    PushoverMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.PushoverMethod").msgclass
    EmailMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.EmailMethod").msgclass
    BackupsCodesMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.BackupsCodesMethod").msgclass
    SecurityQuestionsMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.SecurityQuestionsMethod").msgclass
    Identity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.Identity").msgclass
    CreateIdentityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.CreateIdentityRequest").msgclass
    CreateIdentityResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.CreateIdentityResponse").msgclass
    ActivateIdentityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ActivateIdentityRequest").msgclass
    ChallengeIdentityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ChallengeIdentityRequest").msgclass
    VerifyIdentityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.VerifyIdentityRequest").msgclass
    GetIdentityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.GetIdentityRequest").msgclass
    DeleteIdentityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.DeleteIdentityRequest").msgclass
    ListIdentitiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListIdentitiesRequest").msgclass
    ListIdentitiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListIdentitiesResponse").msgclass
    IdentityStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.IdentityStatus").enummodule
    Hash = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.Hash").enummodule
  end
end
