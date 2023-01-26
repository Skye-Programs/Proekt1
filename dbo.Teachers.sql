CREATE TABLE [dbo].[Teachers] (
    [ID]       INT            IDENTITY (1, 1) NOT NULL,
    [DegreeId] INT            NOT NULL,
    [Name]     NVARCHAR (MAX) NOT NULL,
    [Age]      INT            NOT NULL,
    [UserID]   NVARCHAR (450) NULL,
    CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Teachers_Degrees_DegreeId] FOREIGN KEY ([DegreeId]) REFERENCES [dbo].[Degrees] ([id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Teachers_User_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[AspNetUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Teachers_DegreeId]
    ON [dbo].[Teachers]([DegreeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Teachers_UserID]
    ON [dbo].[Teachers]([UserID] ASC);

