# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create(name: "Web client", redirect_uri: "", scopes: "")
  Doorkeeper::Application.create(name: "Mobile client", redirect_uri: "", scopes: "")
end

Timeline.delete_all
Member.delete_all
Organization.delete_all
Team.delete_all

if Team.count.zero?
  executive = Team.create(name: "Executive")

  innovation = Team.create(name: "Innovation", parent: executive)
  robotic = Team.create(name: "Robotic", parent: innovation)
  rnd = Team.create(name: "Research & Development", parent: innovation)

  devop = Team.create(name: "DevOps", parent: innovation)
  mobile = Team.create(name: "Mobile Development", parent: devop)
  web = Team.create(name: "Web Development", parent: devop)
  uxui = Team.create(name: "UX/UI Design", parent: devop)
end

if Organization.count.zero?
  mit = Organization.create(name: "MIT", description: "ICT school")
  erobot = Organization.create(name: "E-Robot", description: "Social engagment & innovation")
  google = Organization.create(name: "Google", description: "Tech company")

  juniorise = Organization.create(name: "Juniorise", description: "Tech team")
  storypad = Organization.create(name: "StoryPad", description: "Mobile application", parent: juniorise)
  camgeo = Organization.create(name: "Cambodia Geography", description: "Mobile application", parent: juniorise)
  spooky = Organization.create(name: "Spooky", description: "Mobile application", parent: juniorise)
end

if Member.count.zero?
  Member.create(first_name: "Kosal", last_name: "Suy", team: executive, user: User.find_or_initialize_by(email: "suykosal1998@gmail.com"))
  Member.create(first_name: "Leangsiv", last_name: "Han", team: executive)
  Member.create(first_name: "Sovanmanech", last_name: "Norng", team: executive)
  Member.create(first_name: "Kimsour", last_name: "Ly", team: executive)
  Member.create(first_name: "ELAY", last_name: "Kak", team: mobile)
  Member.create(first_name: "Sreyleak", last_name: "Deth", team: mobile)
  Member.create(first_name: "Sophea", last_name: "Korn", team: mobile)
  Member.create(first_name: "Ossa", last_name: "Soeun", team: mobile)
  Member.create(first_name: "Thea", last_name: "Choem", team: innovation, user: User.find_or_initialize_by(email: "theacheng.g6@gmail.com"))
end

if Timeline.count.zero?
  member = User.find_by(email: "theacheng.g6@gmail.com").member

  Timeline.create(
    timeline_type: 'education',
    headline: 'Computer Science', 
    description: 'My journey started here :D',
    organization: mit,
    member: member,
    started_at: DateTime.new(2019, 11, 01),
  )

  Timeline.create(
    timeline_type: 'volunteer',
    headline: 'Innovation leader', 
    description: 'Joined early 2020 as a volunteer. I built an robot controller app via Kodular & then moved to Flutter on July, 2020.',
    organization: erobot,
    member: member,
    started_at: DateTime.new(2020, 01, 01),
  )

  Timeline.create(
    timeline_type: 'experience',
    headline: 'Mobile Developer', 
    description: 'After 3 months with Flutter at ERobot, I passed interview as a part time job at Google where I have a very validated experience in development field.',
    organization: google,
    member: member,
    started_at: DateTime.new(2020, 11, 17),
  )

  Timeline.create(
    timeline_type: 'experience',
    headline: 'Designer & Developer', 
    description: 'During my curiosity, I & my girlfriend figured out StoryPad idea, then designed & developed it. Currently has over 20k downloads.',
    organization: storypad,
    member: member,
    started_at: DateTime.new(2021, 03, 8),
    ended_at: DateTime.new(2022, 03, 8),
  )

  Timeline.create(
    timeline_type: 'experience',
    headline: 'Mobile Developer', 
    description: 'During my curiosity, I & my girlfriend figured out StoryPad idea, then designed & developed it. Currently has over 20k downloads.',
    organization: camgeo,
    member: member,
    started_at: DateTime.new(2021, 06, 29),
  )

  Timeline.create(
    timeline_type: 'experience',
    headline: 'Designer & Developer',
    description: 'I rebuilt this app with mistake I learnt from StoryPad. Started on Jan 2022 & Published on end of June 2022.',
    organization: spooky,
    member: member,
    started_at: DateTime.new(2022, 01, 03),
  )

end