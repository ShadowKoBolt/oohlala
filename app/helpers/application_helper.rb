# frozen_string_literal: true

module ApplicationHelper
  def nav_classes(action_name, target)
    classes = ['nav__item']
    classes << 'active' if action_name == target
    classes.join(' ')
  end
end
