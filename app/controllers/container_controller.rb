class ContainerController < ApplicationController
  include ContainersCommonMixin

  before_action :check_privileges
  before_action :get_session_data
  after_action :cleanup_action
  after_action :set_session_data

  def show_list
    process_show_list(:named_scope => :active)
  end

  private

  def textual_group_list
    [%i(properties relationships smart_management), %i(env limits)]
  end
  helper_method :textual_group_list

  menu_section :cnt
end
