module TmuxCookbook
  module Helpers

    unless defined?(LATEST_VERSION) #prevent warnings about redefining constants
      LATEST_VERSION='2.0'
      LATEST_CHECKSUM='795f4b4446b0ea968b9201c25e8c1ef8a6ade710ebca4657dd879c35916ad362'
      FALLBACK_VERSION='1.6'
      FALLBACK_CHECKSUM='faee08ba1bd8c22537cd5b7458881d1bdb4985df88ed6bc5967c56881a7efbd6'
    end

    def self.auto_version(node)
      if libevent2_available?(node)
        LATEST_VERSION
      else
        FALLBACK_VERSION
      end
    end

    def self.auto_checksum(node)
      if libevent2_available?(node)
        LATEST_CHECKSUM
      else
        FALLBACK_CHECKSUM
      end
    end

    def self.libevent2_available?(node)
      case node['platform_family']
      when 'rhel'
        Gem::Version.new(node['platform_version']) >= Gem::Version.new('7.0')
      when 'debian'
        Gem::Version.new(node['platform_version']) > Gem::Version.new('12.04')
      end
    end
  end
end
