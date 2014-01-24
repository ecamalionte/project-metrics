Role.create! name: "admin"
Role.create! name: "member"

Group.create! name: "11B"
Group.create! name: "12B"

Invitation.create! recipient_email: "bruno", group: Group.first, role: Role.first
Invitation.create! recipient_email: "membro", group: Group.last, role: Role.last

User.create! email: "bruno", password: "1234", password_confirmation: "1234", invitation: Invitation.first, group: Group.first, role: Role.first
User.create! email: "membro", password: "1234", password_confirmation: "1234", invitation: Invitation.last, group: Group.last, role: Role.last

