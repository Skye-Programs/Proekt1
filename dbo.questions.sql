CREATE TABLE [dbo].[questions] (
    [QuestionId]     INT            IDENTITY (1, 1) NOT NULL,
    [QuestionName]   NVARCHAR (MAX) NULL,
    [QuestionAnswer] NVARCHAR (MAX) NULL,
    [TestId]         INT            NOT NULL,
    CONSTRAINT [PK_questions] PRIMARY KEY CLUSTERED ([QuestionId] ASC),
    CONSTRAINT [FK_questions_tests_TestId] FOREIGN KEY ([TestId]) REFERENCES [dbo].[tests] ([TestId]) ON DELETE CASCADE
);


