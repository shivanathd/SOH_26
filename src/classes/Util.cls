Public with sharing class Util
{

    public Map<id,Integer> getFollowerCount(List<id> parentIds)
    {
        Map<id,Integer> parentFollowerMap  = new Map<id,Integer>();
        for(EntitySubscription follower: [SELECT Id,ParentId,SubscriberId FROM EntitySubscription where Isdeleted =false])
        {
            if(!parentFollowerMap.containsKey(follower.ParentId))
                parentFollowerMap.put(follower.ParentID,0);
             
              parentFollowerMap.put(follower.ParentID,Integer.valueof(parentFollowerMap.get(follower.ParentId))+1);   
            
        }
        
        return parentFollowerMap;
    }
}