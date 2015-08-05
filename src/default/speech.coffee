# @attachment.category === 'speech'
# @attachment.data
#   fileKey: String
#   fileName: String
#   fileType: String
#   fileSize: Number
#   fileCategory: String
#   duration: Number

React = require 'react'

LiteAudio = React.createFactory require 'react-lite-audio'

div = React.createFactory 'div'

T = React.PropTypes

module.exports = React.createClass
  displayName: 'message-form-speech'

  propTypes:
    onClick:    T.func
    attachment: T.object.isRequired

  onClick: ->
    @props.onClick?()

  render: ->
    div className: 'attachment attachment-speech', onClick: @onClick,
      LiteAudio
        source: @props.attachment.data.previewUrl
        duration: @props.attachment.data.duration
