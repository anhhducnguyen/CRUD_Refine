const db = require('../../config/database');
// const moment = require('moment-timezone');
// const dayjs = require('dayjs');


const getExamScheduleById = async (schedule_id) => {
    try {
        const examSchedule = await db('examschedules').where({ schedule_id }).first();
        return examSchedule;
    } catch (error) {
        throw new Error('Error fetching examschedules: ' + error.message);
    }
};

const queryExamSchedule = async (filter, options) => {
    const { sortBy = 'schedule_id:asc', limit = 100, page = 1 } = options;
    const [sortField, sortOrder] = sortBy.split(':');
    
    const queryExamSchedule = db('examschedules')
    .join('examrooms', 'examrooms.room_id', 'examschedules.room_id')
        .select(
            'examschedules.schedule_id',
            'examschedules.start_time',
            'examschedules.end_time',
            'examschedules.room_id',
            'examschedules.status',
            'examschedules.name_schedule',
            'examrooms.room_name'
        );  
    
    if (filter.status) {
        queryExamSchedule.where('status', 'like', `%${filter.status}%`);
    }
    
    const offset = (page - 1) * limit;
    const data = await queryExamSchedule.orderBy(sortField, sortOrder).limit(limit).offset(offset);
    
    return {
        results: data,
        page,
        limit,
    };
}

module.exports = {
    getExamScheduleById,
    queryExamSchedule
};
