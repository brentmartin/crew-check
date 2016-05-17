## Data Model

**Roles:**
- Admin - person who creates assessments
- Assessee - person whom the assessment is about ; who also chooses which assessment to have the assessor take
- Assessor - person who will take the assessment about the assessee

**Entities:**
- Assessment (AssessmentTemplate) - a set of questions that an assessee can choose to ask an assessor to answer about the assessee
- Question - a single question about an assessee that an assessor will answer and attached to assessment
- Survey (Assessment) - an instance of an assessment that an assessee has initiated about themselves for the assessors to fill out
- CompletedSurvey (CompletedAssessment) - an instance of a set of evaluations for a survey that a single assessor has already filled out
- Evaluation (Answer) - an answer to a question that is part of a survey that an assessor has filled out about an assessee

**Start with:**
- Assessor is completing/filling out/taking a survey about an assessee
