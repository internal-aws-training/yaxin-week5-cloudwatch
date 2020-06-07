console.log("Outside Hello World");

exports.handler = async (event, context) => {
    console.log("Inside hello world");
    return context.logStreamName
};